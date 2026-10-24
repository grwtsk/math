# T_zpow_width_invariant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87d6d03f-ceba-430d-c08f-55bf53cf6d32",
  "kind": "theorem",
  "lexical_name": "T_zpow_width_invariant",
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
  "slug": "t-zpow-width-invariant--95fde84144606dc718e59122",
  "source": {
    "blob": "33eb642eb37bef1e431045781e1fce033306332e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Identities/Variant8c3e00253b789495348efe6f89563d32c2715adf2bca67644fbd64f349077154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95fde84144606dc718e5912234533ef3cbd962978cc1e39a840cee7e07169eac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Identities/Variant8c3e00253b789495348efe6f89563d32c2715adf2bca67644fbd64f349077154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87d6d03f-ceba-430d-c08f-55bf53cf6d32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem T_zpow_width_invariant (N : ℕ) (k n : ℤ) (f : SlashInvariantForm (Gamma N) k) (z : ℍ) :
    f (((ModularGroup.T ^ (N * n))) • z) = f z := by
  rw [modular_T_zpow_smul z (N * n)]
  simpa only [Int.cast_mul, Int.cast_natCast] using vAdd_width_periodic N k n f z

end SlashInvariantForm
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Identities/Variant8c3e00253b789495348efe6f89563d32c2715adf2bca67644fbd64f349077154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Identities/Variant8c3e00253b789495348efe6f89563d32c2715adf2bca67644fbd64f349077154.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33eb642eb37bef1e431045781e1fce033306332e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
