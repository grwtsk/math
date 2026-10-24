# one_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:625213d2-a7e3-6e2e-ee9e-3562d3bd264c",
  "kind": "theorem",
  "lexical_name": "one_snd",
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
  "slug": "one-snd--a4fc0cfd7468c2e6fc982030",
  "source": {
    "blob": "29714364f98fc2f7218391db3068cee0d33b26a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 266,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4fc0cfd7468c2e6fc982030c978f98798eeffcbd5adffea730e903f4f407401",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:625213d2-a7e3-6e2e-ee9e-3562d3bd264c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_snd : (1 : X q).2 = 0 :=
  rfl
set_option linter.uppercaseLean3 false in
#align lucas_lehmer.X.one_snd LucasLehmer.X.one_snd

#noalign lucas_lehmer.X.bit0_fst
#noalign lucas_lehmer.X.bit0_snd
#noalign lucas_lehmer.X.bit1_fst
#noalign lucas_lehmer.X.bit1_snd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29714364f98fc2f7218391db3068cee0d33b26a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
