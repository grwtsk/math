# eventually_mabs_div_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f525a0b-eb9e-300f-4882-6cab41886faa",
  "kind": "theorem",
  "lexical_name": "eventually_mabs_div_lt",
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
  "slug": "eventually-mabs-div-lt--36696ca33c8b15bc5960f173",
  "source": {
    "blob": "8093ca23c75f05af56cd50d9d3825ee3e4db6333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36696ca33c8b15bc5960f173ce36018da4846a0960c3cbe71d52f9409df78231",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f525a0b-eb9e-300f-4882-6cab41886faa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_mabs_div_lt (a : α) {ε : α} (hε : 1 < ε) : ∀ᶠ x in 𝓝 a, |x / a|ₘ < ε :=
  (nhds_eq_iInf_mabs_div a).symm ▸
    mem_iInf_of_mem ε (mem_iInf_of_mem hε <| by simp only [mabs_div_comm, mem_principal_self])

/-- In a linearly ordered commutative group with the order topology,
if `f` tends to `C` and `g` tends to `atTop` then `f * g` tends to `atTop`. -/
@[to_additive add_atTop "In a linearly ordered additive commutative group with the order topology,
if `f` tends to `C` and `g` tends to `atTop` then `f + g` tends to `atTop`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8093ca23c75f05af56cd50d9d3825ee3e4db6333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
