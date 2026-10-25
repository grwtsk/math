# correspondence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:453bfd7899125fb1bdcf736cc3ccb111038c6403459fecc47c8447c4e79291c2",
  "kind": "def",
  "lexical_name": "correspondence",
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
  "slug": "correspondence--9e6501856eadf244a1e33477",
  "source": {
    "blob": "b699a40423a94674413a2edf08b20d80aa28433b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 441,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant48d96fb43e5a6c2a9c3d445fc03739f9496e084332904a12df5e05774af6eb8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9e6501856eadf244a1e334775e7db2943add941ef559674a2afb49312cbe3b3d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant48d96fb43e5a6c2a9c3d445fc03739f9496e084332904a12df5e05774af6eb8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:453bfd7899125fb1bdcf736cc3ccb111038c6403459fecc47c8447c4e79291c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def correspondence (r : Setoid α) : { s // r ≤ s } ≃o Setoid (Quotient r) where
  toFun s := mapOfSurjective s.1 Quotient.mk'' ((ker_mk_eq r).symm ▸ s.2) exists_rep
  invFun s := ⟨comap Quotient.mk' s, fun x y h => by rw [comap_rel, eq_rel.2 h]⟩
  left_inv s := by
    ext
    refine ⟨?_, fun h => ⟨_, _, rfl, rfl, h⟩⟩
    intro ⟨a, b, hx, hy, H⟩
    refine s.1.trans' (s.1.symm' <| s.2 <| eq_rel.1 hx) (s.1.trans' H <| s.2 <| (eq_rel.1 hy))
  right_inv s :=
    ext' fun x y =>
      ⟨fun h => let ⟨_, _, hx, hy, H⟩ := h; hx ▸ hy ▸ H,
        Quotient.inductionOn₂ x y fun w z h => ⟨w, z, rfl, rfl, h⟩⟩
  map_rel_iff' := by
    intro s t
    refine ⟨?_, ?_⟩
    · intro h x y hs
      let ⟨a, b, hx, hy, ht⟩ := h ⟨x, y, rfl, rfl, hs⟩
      exact t.1.trans' (t.1.symm' <| t.2 <| eq_rel.1 hx) <| t.1.trans' ht <| t.2 <| eq_rel.1 hy
    · intro h x y hs
      let ⟨a, b, hx, hy, Hs⟩ := hs
      exact ⟨a, b, hx, hy, h Hs⟩
#align setoid.correspondence Setoid.correspondence

end Setoid

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant48d96fb43e5a6c2a9c3d445fc03739f9496e084332904a12df5e05774af6eb8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant48d96fb43e5a6c2a9c3d445fc03739f9496e084332904a12df5e05774af6eb8e.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b699a40423a94674413a2edf08b20d80aa28433b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
