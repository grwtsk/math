# transferSylow_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c26fdb8-2915-a531-4312-70507dd4a9b3",
  "kind": "theorem",
  "lexical_name": "transferSylow_eq_pow",
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
  "slug": "transfersylow-eq-pow--8cfa8daf2d69e473a8cc2612",
  "source": {
    "blob": "f33ef53ddbda61c4e97a059161c54ab54a70be53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 269,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cfa8daf2d69e473a8cc261209d39d4adb20a4d76953b453d8b8170ed196c057",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c26fdb8-2915-a531-4312-70507dd4a9b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem transferSylow_eq_pow (g : G) (hg : g ∈ P) :
    transferSylow P hP g =
      ⟨g ^ (P : Subgroup G).index, transfer_eq_pow_aux g (transferSylow_eq_pow_aux P hP g hg)⟩ :=
  haveI : IsMulCommutative P := ⟨⟨fun a b => Subtype.ext (hP (le_normalizer b.2) a a.2)⟩⟩
  transfer_eq_pow _ _ <| transferSylow_eq_pow_aux P hP g hg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant4f98b3f670d9a2045c7c716112127eb57f928ae952e19c5e96bfbf4748abd311.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33ef53ddbda61c4e97a059161c54ab54a70be53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
