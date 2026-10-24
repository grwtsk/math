# Multiplicative.mulAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fc8f0908e0e8483e55132b2fb25c04c6d322677ca12b7328a2d97df98da39b7",
  "kind": "instance",
  "lexical_name": "Multiplicative.mulAction",
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
  "slug": "multiplicative-mulaction--9771d5206b1aa20f880157aa",
  "source": {
    "blob": "c9ce021002859f2927d10621074cace59e4868c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 44,
    "path": "GRWTSK/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9771d5206b1aa20f880157aaffd8dd4d080ada73de2c9b38c88b49355b77dda1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fc8f0908e0e8483e55132b2fb25c04c6d322677ca12b7328a2d97df98da39b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Multiplicative.mulAction [AddMonoid α] [AddAction α β] :
    MulAction (Multiplicative α) β where
  one_smul := AddAction.zero_vadd
  mul_smul := AddAction.add_vadd (G := α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/TypeTags/Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ce021002859f2927d10621074cace59e4868c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
