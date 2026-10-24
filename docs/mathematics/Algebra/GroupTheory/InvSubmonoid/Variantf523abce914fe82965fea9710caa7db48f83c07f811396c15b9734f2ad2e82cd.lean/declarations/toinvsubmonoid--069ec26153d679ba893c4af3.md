# toInvSubmonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7f9e4db933d783f38313c0f76753e36eb63e4a58cee5f8dd46ae5d18c7ea269",
  "kind": "def",
  "lexical_name": "toInvSubmonoid",
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
  "slug": "toinvsubmonoid--069ec26153d679ba893c4af3",
  "source": {
    "blob": "20712c5b83e31245e375a96dba4423f71acda9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 52,
    "path": "GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:069ec26153d679ba893c4af334736274c903dbde5ea6d3edac3216bc9baf7a1b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7f9e4db933d783f38313c0f76753e36eb63e4a58cee5f8dd46ae5d18c7ea269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toInvSubmonoid : M →* invSubmonoid M S :=
  (equivInvSubmonoid M S).toMonoidHom.comp ((algebraMap R S : R →* S).submonoidMap M)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/InvSubmonoid/Variantf523abce914fe82965fea9710caa7db48f83c07f811396c15b9734f2ad2e82cd.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20712c5b83e31245e375a96dba4423f71acda9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
