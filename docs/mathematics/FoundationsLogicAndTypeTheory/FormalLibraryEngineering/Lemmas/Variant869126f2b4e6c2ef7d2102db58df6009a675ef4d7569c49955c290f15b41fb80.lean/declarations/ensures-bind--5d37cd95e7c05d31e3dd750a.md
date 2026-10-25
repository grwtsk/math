# Ensures.bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e277a803-0bf1-a3a1-20ed-7e4697714b02",
  "kind": "theorem",
  "lexical_name": "Ensures.bind",
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
  "slug": "ensures-bind--5d37cd95e7c05d31e3dd750a",
  "source": {
    "blob": "d592413bf746b49655e80c8f4ffaf8197b28cc00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d37cd95e7c05d31e3dd750a87b9811b71c2d59be7db53cb3ebf5b375fb39f1a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e277a803-0bf1-a3a1-20ed-7e4697714b02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem Ensures.bind {m : Type u → Type v} [Monad m] [LawfulMonad m]
    {α β : Type u} {x : m α} {P : α → Prop} {k : α → m β} {Q : β → Prop}
    (h : Ensures P x) (hk : ∀ a, P a → Ensures Q (k a)) :
    Ensures Q (x >>= k) := by
  obtain ⟨y, hy⟩ := h.exists_refinement
  obtain ⟨W, hW⟩ := Classical.skolem.mp
    (fun (a : {a : α // P a}) => (hk a.val a.property).exists_refinement)
  refine ⟨⟨y >>= fun a => W a, ⟨fun {γ} g => ?_⟩⟩⟩
  rw [bind_assoc, bind_assoc]
  refine Eq.trans ?_ (hy.bind_eq (fun a => k a >>= g))
  exact bind_congr fun a => (hW a).bind_eq g

/-- Every value returned by `x` satisfies `MonadAttach.CanReturn x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant869126f2b4e6c2ef7d2102db58df6009a675ef4d7569c49955c290f15b41fb80.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d592413bf746b49655e80c8f4ffaf8197b28cc00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
