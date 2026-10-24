# firstPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0750cbe658a94551fa87dbc673ffe0a3fa7ebb519b906b2565ddc4b5ec1c5aa",
  "kind": "def",
  "lexical_name": "firstPair",
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
  "slug": "firstpair--67488f3dceb2d19794ec1be0",
  "source": {
    "blob": "b75164a279c8b684bd5cb0f6bb7133bbb3d43c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67488f3dceb2d19794ec1be0099d71d067512f235f9a7690066dfc390b381dd4",
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

Occurrence: `declaration:a0750cbe658a94551fa87dbc673ffe0a3fa7ebb519b906b2565ddc4b5ec1c5aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstPair (t : PrimitiveAdditiveTriple) (hf : t.a%4=1 ∧ 16 ∣ t.c) : PairFrame t := by
  let h := firstWitness t hf
  have hd : Descends t := Or.inl hf
  have hn : 0 < h.n := h.n_pos
  have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
  have hc : (t.c : ℤ)=16*(h.n : ℤ) := by exact_mod_cast h.c_eq
  have h1 : displacement t 1=16*(0 : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h2 : displacement t 2=16*(-(h.n : ℤ)) := by
    simp only [displacement,sourceX,anchor,if_pos hf,Matrix.cons_val_two]
    omega
  refine ⟨1,2,by decide,2*(h.n : ℤ),⟨h.n,rfl⟩,?_,?_,?_⟩
  · have hn' : (0 : ℤ)<h.n := by exact_mod_cast hn
    omega
  · simpa using coordinates_multiple t hd 1 0 h1
  · convert coordinates_multiple t hd 2 (-(h.n : ℤ)) h2 using 1 <;>
      ext i <;> fin_cases i <;> simp <;> ring

/-- Second chamber, a even: T0 and Ta, with NEGATIVE Y-gap -a/8. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b75164a279c8b684bd5cb0f6bb7133bbb3d43c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
