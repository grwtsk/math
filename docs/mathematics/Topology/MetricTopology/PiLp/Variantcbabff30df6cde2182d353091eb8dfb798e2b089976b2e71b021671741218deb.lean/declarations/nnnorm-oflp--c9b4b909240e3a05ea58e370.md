# nnnorm_ofLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df0aed58-ecad-138c-7a5e-92bc584a8ff5",
  "kind": "lemma",
  "lexical_name": "nnnorm_ofLp",
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
  "slug": "nnnorm-oflp--c9b4b909240e3a05ea58e370",
  "source": {
    "blob": "7592849e10e9f274cce1fff345663ebcf9fe2125",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 738,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9b4b909240e3a05ea58e370efc36b8c66bc184645c2a8cadfcd6d1697580b20",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df0aed58-ecad-138c-7a5e-92bc584a8ff5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 738–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma nnnorm_ofLp (f : PiLp ∞ β) : ‖ofLp f‖₊ = ‖f‖₊ := by
  rw [nnnorm_eq_ciSup, Pi.nnnorm_def, Finset.sup_univ_eq_ciSup]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variantcbabff30df6cde2182d353091eb8dfb798e2b089976b2e71b021671741218deb.lean#L738).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7592849e10e9f274cce1fff345663ebcf9fe2125` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
