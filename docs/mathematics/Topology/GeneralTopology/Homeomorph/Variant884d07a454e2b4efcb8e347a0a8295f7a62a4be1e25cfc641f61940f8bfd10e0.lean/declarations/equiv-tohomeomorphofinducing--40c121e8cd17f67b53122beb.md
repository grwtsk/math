# Equiv.toHomeomorphOfInducing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7f38a63291c65cc20b0f828e587b0a5db0855c158a01063b548d6d3eec9efe6",
  "kind": "def",
  "lexical_name": "Equiv.toHomeomorphOfInducing",
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
  "slug": "equiv-tohomeomorphofinducing--40c121e8cd17f67b53122beb",
  "source": {
    "blob": "edc234877d46215795be0c391286cefce684913f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 733,
    "line": 723,
    "path": "GRWTSK/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40c121e8cd17f67b53122beb24ffb120909d5dafa10661f64fde8dd39e78e941",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7f38a63291c65cc20b0f828e587b0a5db0855c158a01063b548d6d3eec9efe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–733.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Equiv.toHomeomorphOfInducing [TopologicalSpace α] [TopologicalSpace β] (f : α ≃ β)
    (hf : Inducing f) : α ≃ₜ β :=
  { f with
    continuous_toFun := hf.continuous
    continuous_invFun := hf.continuous_iff.2 <| by simpa using continuous_id }
#align equiv.to_homeomorph_of_inducing Equiv.toHomeomorphOfInducing

namespace Continuous

variable [TopologicalSpace α] [TopologicalSpace β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Homeomorph/Variant884d07a454e2b4efcb8e347a0a8295f7a62a4be1e25cfc641f61940f8bfd10e0.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edc234877d46215795be0c391286cefce684913f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
