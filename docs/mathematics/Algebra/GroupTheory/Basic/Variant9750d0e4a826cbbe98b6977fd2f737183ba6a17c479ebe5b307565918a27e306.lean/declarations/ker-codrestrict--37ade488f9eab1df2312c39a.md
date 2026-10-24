# ker_codRestrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:85337dd1-9753-3dc8-b9db-bb90897f2781",
  "kind": "theorem",
  "lexical_name": "ker_codRestrict",
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
  "slug": "ker-codrestrict--37ade488f9eab1df2312c39a",
  "source": {
    "blob": "c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2851,
    "line": 2845,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ade488f9eab1df2312c39a7ca3151efdeb589257a4b13fdd7c2661a34a04c1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85337dd1-9753-3dc8-b9db-bb90897f2781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2845–2851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_codRestrict {S} [SetLike S N] [SubmonoidClass S N] (f : G →* N) (s : S)
    (h : ∀ x, f x ∈ s) : (f.codRestrict s h).ker = f.ker :=
  SetLike.ext fun _x => Subtype.ext_iff
#align monoid_hom.ker_cod_restrict MonoidHom.ker_codRestrict
#align add_monoid_hom.ker_cod_restrict AddMonoidHom.ker_codRestrict

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant9750d0e4a826cbbe98b6977fd2f737183ba6a17c479ebe5b307565918a27e306.lean#L2845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c7f820fabda9b5f16f3179f6636d7aae9c8d2ea5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
