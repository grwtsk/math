# evenBPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:943ca1dfbd4bb2eb422796043b6c0ca7c15cbe3a6e7d5f1631cd45751e786601",
  "kind": "def",
  "lexical_name": "evenBPair",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "evenbpair--4d3bdb2294a9e2ebddf2db84",
  "source": {
    "blob": "b75164a279c8b684bd5cb0f6bb7133bbb3d43c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d3bdb2294a9e2ebddf2db84628326e6927e724d42a1ebe875c23b20cd363665",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:943ca1dfbd4bb2eb422796043b6c0ca7c15cbe3a6e7d5f1631cd45751e786601`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evenBPair (t : PrimitiveAdditiveTriple)
    (hf : ¬ (t.a%4=1 ∧ 16 ∣ t.c))
    (he : ((t.b : ℤ)-t.a)%4=1 ∧ 16 ∣ t.a*t.b) (hb : 16 ∣ t.b) : PairFrame t := by
  let n := t.b/16
  have hbn : t.b=16*n := by
    have hm := Nat.mod_eq_zero_of_dvd hb
    dsimp [n]
    omega
  have hn : 0<n := by have hh := t.b_pos; omega
  have hbq : (t.b : ℤ)=16*(n : ℤ) := by exact_mod_cast hbn
  have hd : Descends t := Or.inr he
  have h0 : displacement t 0=16*(0 : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h2 : displacement t 2=16*(-(n : ℤ)) := by
    simp only [displacement,sourceX,anchor,if_neg hf,Matrix.cons_val_two,sub_zero]
    omega
  refine ⟨0,2,by decide,2*(n : ℤ),⟨n,rfl⟩,?_,?_,?_⟩
  · have hn' : (0 : ℤ)<n := by exact_mod_cast hn
    omega
  · simpa using coordinates_multiple t hd 0 0 h0
  · convert coordinates_multiple t hd 2 (-(n : ℤ)) h2 using 1 <;>
      ext i <;> fin_cases i <;> simp <;> ring

/-- The selection is determined by OLD original-source guards, never by fitting a gap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b75164a279c8b684bd5cb0f6bb7133bbb3d43c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
