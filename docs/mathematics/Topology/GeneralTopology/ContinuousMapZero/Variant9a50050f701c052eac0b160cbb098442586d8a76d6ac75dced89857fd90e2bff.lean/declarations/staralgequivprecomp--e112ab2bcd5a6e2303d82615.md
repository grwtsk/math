# starAlgEquivPrecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35816de056bbb983739f818d398659182767cba64955739c7baa03fc033deddc",
  "kind": "def",
  "lexical_name": "starAlgEquivPrecomp",
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
  "slug": "staralgequivprecomp--e112ab2bcd5a6e2303d82615",
  "source": {
    "blob": "b7a13370fd054685315fa152eafd14224202fe9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 466,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant9a50050f701c052eac0b160cbb098442586d8a76d6ac75dced89857fd90e2bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e112ab2bcd5a6e2303d826159d89b4cbe17e82d63cff37034f3710ad1b18656f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variant9a50050f701c052eac0b160cbb098442586d8a76d6ac75dced89857fd90e2bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35816de056bbb983739f818d398659182767cba64955739c7baa03fc033deddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def starAlgEquivPrecomp (f : X ≃ₜ Y) (hf : f 0 = 0) :
    C(Y, R)₀ ≃⋆ₐ[R] C(X, R)₀ :=
  .ofNonUnitalStarAlgHom
    (nonUnitalStarAlgHom_precomp R ⟨f, hf⟩)
    (nonUnitalStarAlgHom_precomp R ⟨f.symm, by simpa using congr(f.symm $hf.symm)⟩)
    (by ext; simp) (by ext; simp)

end CompHoms

section Norm

variable {α : Type*} {𝕜 : Type*} {R : Type*} [TopologicalSpace α] [CompactSpace α] [Zero α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variant9a50050f701c052eac0b160cbb098442586d8a76d6ac75dced89857fd90e2bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant9a50050f701c052eac0b160cbb098442586d8a76d6ac75dced89857fd90e2bff.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7a13370fd054685315fa152eafd14224202fe9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
