# nontrivial_of_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4875931-0a7b-ac4e-1003-37bd11997fa2",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_preimage",
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
  "slug": "nontrivial-of-preimage--063cdf3e8f5a03d0fd1c684c",
  "source": {
    "blob": "de9820c0fa706d6e02f220d23df3b2d5da9a66e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1300,
    "line": 1286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:063cdf3e8f5a03d0fd1c684c87ddbef3bb24a91628c262fae112cb55b733747b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4875931-0a7b-ac4e-1003-37bd11997fa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1286–1300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_preimage {f : α → β} (hf : Function.Injective f) (s : Set β)
    (hs : (f ⁻¹' s).Nontrivial) : s.Nontrivial :=
  (hs.image hf).mono <| image_preimage_subset _ _
#align set.nontrivial_of_preimage Set.nontrivial_of_preimage

end Subsingleton

end Set

namespace Function

variable {ι : Sort*} {α : Type*} {β : Type*} {f : α → β}

open Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Image/Variante1b2d5228f1da793ad43f01b16d36da010355b658cd5a1d3713104b08cdfd1a2.lean#L1286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de9820c0fa706d6e02f220d23df3b2d5da9a66e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
