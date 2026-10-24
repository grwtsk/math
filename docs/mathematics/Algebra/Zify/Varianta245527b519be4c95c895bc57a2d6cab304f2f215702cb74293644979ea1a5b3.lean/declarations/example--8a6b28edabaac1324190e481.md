# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0770e12308bb4fb15bed4a0d3d5f0781668031f59c13507cce555057d14c889a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--8a6b28edabaac1324190e481",
  "source": {
    "blob": "72c24633eea749d2aee4b03942d38a3d4814c097",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 22,
    "path": "GRWTSK/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a6b28edabaac1324190e4817706606eb5ca34196eb646c5e36329c6133d6039",
  "verification": {
    "reference": "docs/verification/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0770e12308bb4fb15bed4a0d3d5f0781668031f59c13507cce555057d14c889a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a b c x y z : ℕ) (h : ¬ x*y*z < 0) : c < a + 3*b := by
  zify
  guard_target =~ (c : ℤ) < (a : ℤ) + 3 * (b : ℤ)
  zify at h
  guard_hyp h :~ ¬(x : ℤ) * (y : ℤ) * (z : ℤ) < (0 : ℤ)
  exact test_sorry

-- TODO: These are verbatim copies of the tests from mathlib3. It would be nice to add more.

-- set_option pp.coercions false
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Zify/Varianta245527b519be4c95c895bc57a2d6cab304f2f215702cb74293644979ea1a5b3.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72c24633eea749d2aee4b03942d38a3d4814c097` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
