# Ultrafilter.continuous_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b0c147f-8153-32d8-21eb-1770dc98c1fa",
  "kind": "theorem",
  "lexical_name": "Ultrafilter.continuous_mul_left",
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
  "slug": "ultrafilter-continuous-mul-left--303a55155c2c082bfb20cf00",
  "source": {
    "blob": "4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 83,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:303a55155c2c082bfb20cf002890a3e8917aff403f3a83559aa18f56e08d6a87",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0c147f-8153-32d8-21eb-1770dc98c1fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ultrafilter.continuous_mul_left {M} [Mul M] (V : Ultrafilter M) :
    Continuous (· * V) :=
  ultrafilterBasis_is_basis.continuous_iff.2 <| Set.forall_mem_range.mpr fun s ↦
    ultrafilter_isOpen_basic { m : M | ∀ᶠ m' in V, m * m' ∈ s }

namespace Hindman

/-- `FS a` is the set of finite sums in `a`, i.e. `m ∈ FS a` if `m` is the sum of a nonempty
subsequence of `a`. We give a direct inductive definition instead of talking about subsequences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variantbca09fda75a809eaacee8583083c43b2804535510ddfc7bc1309cd1cc80fc2b0.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4eb67fbd0e2a57a2ae106b45fc9250e3f576f84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
