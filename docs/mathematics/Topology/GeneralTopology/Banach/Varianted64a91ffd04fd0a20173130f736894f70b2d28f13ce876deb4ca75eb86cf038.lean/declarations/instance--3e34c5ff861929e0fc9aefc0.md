# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:333f96b7e2c03a55db2cec114a401f1e890db3f71fbf3e5d75f7340b63443f4d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3e34c5ff861929e0fc9aefc0",
  "source": {
    "blob": "53e450e01f99cb80b27652433fc3aba66945a8d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 65,
    "path": "GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e34c5ff861929e0fc9aefc085e48f3c1bd064b8c37da7ab580363d7dc9a952d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:333f96b7e2c03a55db2cec114a401f1e890db3f71fbf3e5d75f7340b63443f4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [RingHomInvPair σ' σ] (f : E ≃SL[σ] F) :
    Inhabited (ContinuousLinearMap.NonlinearRightInverse (f : E →SL[σ] F)) :=
  ⟨f.toNonlinearRightInverse⟩

/-! ### Proof of the Banach open mapping theorem -/


variable [CompleteSpace F]

namespace ContinuousLinearMap

include σ' in
/-- First step of the proof of the Banach open mapping theorem (using completeness of `F`):
by Baire's theorem, there exists a ball in `E` whose image closure has nonempty interior.
Rescaling everything, it follows that any `y ∈ F` is arbitrarily well approached by
images of elements of norm at most `C * ‖y‖`.
For further use, we will only need such an element whose image
is within distance `‖y‖/2` of `y`, to apply an iterative process. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Banach/Varianted64a91ffd04fd0a20173130f736894f70b2d28f13ce876deb4ca75eb86cf038.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53e450e01f99cb80b27652433fc3aba66945a8d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
