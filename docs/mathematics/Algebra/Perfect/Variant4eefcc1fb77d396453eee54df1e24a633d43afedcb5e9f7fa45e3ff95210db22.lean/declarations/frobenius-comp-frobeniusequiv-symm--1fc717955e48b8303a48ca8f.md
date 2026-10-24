# frobenius_comp_frobeniusEquiv_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bc38580-8d04-7f63-3e19-a591f17b6605",
  "kind": "theorem",
  "lexical_name": "frobenius_comp_frobeniusEquiv_symm",
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
  "slug": "frobenius-comp-frobeniusequiv-symm--1fc717955e48b8303a48ca8f",
  "source": {
    "blob": "6aea37303222861166b3e97ad53e0fe5fb9880d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 152,
    "path": "GRWTSK/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fc717955e48b8303a48ca8f1fdcd790a6f897237f899c239daa69625f8325fc",
  "verification": {
    "reference": "docs/verification/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bc38580-8d04-7f63-3e19-a591f17b6605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem frobenius_comp_frobeniusEquiv_symm :
    (frobenius R p).comp (frobeniusEquiv R p).symm = RingHom.id R := by
  ext; simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Perfect/Variant4eefcc1fb77d396453eee54df1e24a633d43afedcb5e9f7fa45e3ff95210db22.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aea37303222861166b3e97ad53e0fe5fb9880d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
