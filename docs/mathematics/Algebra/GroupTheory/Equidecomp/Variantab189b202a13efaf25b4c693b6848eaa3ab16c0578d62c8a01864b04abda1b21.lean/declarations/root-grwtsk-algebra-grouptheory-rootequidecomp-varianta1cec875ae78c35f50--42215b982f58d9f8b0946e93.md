# _root_.GRWTSK.Algebra.GroupTheory.RootEquidecomp.Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.Equidecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:366d3d3a8ac2b3da29757534c49474091ab26bacf0b05d384913376eed875c88",
  "kind": "structure",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.RootEquidecomp.Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.Equidecomp",
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
  "slug": "root-grwtsk-algebra-grouptheory-rootequidecomp-varianta1cec875ae78c35f50--42215b982f58d9f8b0946e93",
  "source": {
    "blob": "8761cf3245a42f909667f20edf3da1535b88ca8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 93,
    "path": "GRWTSK/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42215b982f58d9f8b0946e93350c539fa0c429d948d9781edc0bab197d39f9a1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:366d3d3a8ac2b3da29757534c49474091ab26bacf0b05d384913376eed875c88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure _root_.GRWTSK.Algebra.GroupTheory.RootEquidecomp.Varianta1cec875ae78c35f50191734249c974d881324b47057b73cdd7bcd98728142e8.Equidecomp extends PartialEquiv X X where
  isDecompOn' : ∃ S : Finset G, IsDecompOn toFun source S

variable {X G}

/-- Note that `Equidecomp X G` is not `FunLike`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equidecomp/Variantab189b202a13efaf25b4c693b6848eaa3ab16c0578d62c8a01864b04abda1b21.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8761cf3245a42f909667f20edf3da1535b88ca8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
