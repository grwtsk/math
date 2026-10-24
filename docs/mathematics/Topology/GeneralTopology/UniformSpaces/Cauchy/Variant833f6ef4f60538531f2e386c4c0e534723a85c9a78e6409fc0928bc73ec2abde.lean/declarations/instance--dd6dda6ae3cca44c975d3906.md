# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbbb07ea66476690d0fabf96f27fe21a540b70ae6d0a3b53c90a710654a7661d",
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
  "slug": "instance--dd6dda6ae3cca44c975d3906",
  "source": {
    "blob": "ecdc6154e0d31f61b976b0a9fbd4aa4b596a076d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 771,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd6dda6ae3cca44c975d39062745bf7bc434a0d6e3e205d6ba65c9b7cd59bc1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbbb07ea66476690d0fabf96f27fe21a540b70ae6d0a3b53c90a710654a7661d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 771–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) firstCountableTopology : FirstCountableTopology α :=
  ⟨fun a => by rw [nhds_eq_comap_uniformity]; infer_instance⟩
#align uniform_space.first_countable_topology UniformSpace.firstCountableTopology

/-- A separable uniform space with countably generated uniformity filter is second countable:
one obtains a countable basis by taking the balls centered at points in a dense subset,
and with rational "radii" from a countable open symmetric antitone basis of `𝓤 α`. We do not
register this as an instance, as there is already an instance going in the other direction
from second countable spaces to separable spaces, and we want to avoid loops. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variant833f6ef4f60538531f2e386c4c0e534723a85c9a78e6409fc0928bc73ec2abde.lean#L771).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecdc6154e0d31f61b976b0a9fbd4aa4b596a076d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
