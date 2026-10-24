# halfLine_zeroExtension_memLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ed1c2bd-2668-87fc-2544-e6b480b04460",
  "kind": "theorem",
  "lexical_name": "halfLine_zeroExtension_memLp",
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
  "slug": "halfline-zeroextension-memlp--f515f6b888e5cfaea7005aa5",
  "source": {
    "blob": "7a91d63fbebedcb2481c12bee5886f00d2f4ef8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variantf561a4bc0c791fcbc7003e66665a5fa7eb7f9017126f751515ce9fceb83cbdb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f515f6b888e5cfaea7005aa592b1f7895927d199f8ebffee7ff4d6219d789aad",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variantf561a4bc0c791fcbc7003e66665a5fa7eb7f9017126f751515ce9fceb83cbdb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ed1c2bd-2668-87fc-2544-e6b480b04460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem halfLine_zeroExtension_memLp (f : H) :
    MemLp ((Ioi (0 : ℝ)).indicator (fun x => f x)) 2 volume := by
  apply (memLp_indicator_iff_restrict measurableSet_Ioi).mpr
  exact Lp.memLp f

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variantf561a4bc0c791fcbc7003e66665a5fa7eb7f9017126f751515ce9fceb83cbdb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/OperatorScoutAudit/Variantf561a4bc0c791fcbc7003e66665a5fa7eb7f9017126f751515ce9fceb83cbdb1.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a91d63fbebedcb2481c12bee5886f00d2f4ef8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
