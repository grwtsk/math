# powOrderIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab856ecfecfc8fc12f7e13fdbbe1872a8c798e2fde31af89ce27177c0c0e2484",
  "kind": "def",
  "lexical_name": "powOrderIso",
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
  "slug": "poworderiso--a0cbd148aae18551a9e196c1",
  "source": {
    "blob": "7b58dcaf90d31748c3dac6ab544f45bdf0396850",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 223,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0cbd148aae18551a9e196c13b3ceed257548134af3ec50c6d3b8bdf015cea05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab856ecfecfc8fc12f7e13fdbbe1872a8c798e2fde31af89ce27177c0c0e2484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def powOrderIso (n : ℕ) (hn : n ≠ 0) : ℝ≥0 ≃o ℝ≥0 :=
  StrictMono.orderIsoOfSurjective (fun x ↦ x ^ n) (fun x y h =>
      pow_left_strictMonoOn₀ hn (zero_le (a := x)) (zero_le (a := y)) h) <|
    (continuous_id.pow _).surjective (tendsto_pow_atTop hn) <| by
      simpa [OrderBot.atBot_eq, pos_iff_ne_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant95aca02a11f951f11d876aa5588928c3c554bd97bb6a8f3c89f2a72188a936bb.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b58dcaf90d31748c3dac6ab544f45bdf0396850` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
