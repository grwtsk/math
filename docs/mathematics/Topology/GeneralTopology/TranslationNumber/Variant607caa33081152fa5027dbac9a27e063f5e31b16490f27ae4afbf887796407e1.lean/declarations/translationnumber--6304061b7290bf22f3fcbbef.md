# translationNumber

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b4b143c77485c1dd6a40bb16f0740ed646df1e4c6b6d838f7a0ba0619e1b730",
  "kind": "def",
  "lexical_name": "translationNumber",
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
  "slug": "translationnumber--6304061b7290bf22f3fcbbef",
  "source": {
    "blob": "092e7da723d91029af270352b07150f63677e197",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 557,
    "path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6304061b7290bf22f3fcbbef14a7472f9c11e64e6e58faf969f3af8b7b051736",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b4b143c77485c1dd6a40bb16f0740ed646df1e4c6b6d838f7a0ba0619e1b730`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def translationNumber : ℝ :=
  limUnder atTop f.transnumAuxSeq

end

-- TODO: choose two different symbols for `CircleDeg1Lift.translationNumber` and the future
-- `circle_mono_homeo.rotation_number`, then make them `localized notation`s
local notation "τ" => translationNumber

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant607caa33081152fa5027dbac9a27e063f5e31b16490f27ae4afbf887796407e1.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `092e7da723d91029af270352b07150f63677e197` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
