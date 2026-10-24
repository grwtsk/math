# _root_.GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.minimalPrimes.finite_of_isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67c9fc96-115e-98f5-654d-9510fc2a64b1",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.minimalPrimes.finite_of_isNoetherianRing",
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
  "slug": "root-grwtsk-algebra-rootminimalprimesfiniteofisnoetherianring-varianta5b--f7f7e9d9df3de29e86a42fe1",
  "source": {
    "blob": "22fbe4774064f0357c57bc644e3d6e5d36005ffe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 37,
    "path": "GRWTSK/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7f7e9d9df3de29e86a42fe15a5c1829870c44450a8d27c13710a36106c151c9",
  "verification": {
    "reference": "docs/verification/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67c9fc96-115e-98f5-654d-9510fc2a64b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Algebra.RootMinimalPrimesFiniteOfIsNoetherianRing.Varianta5be3167afb48526524bf4123f6ee786e2fca14288568a3c6c846ee8253e2073.minimalPrimes.finite_of_isNoetherianRing : (minimalPrimes R).Finite :=
  minimalPrimes.equivIrreducibleComponents R
    |>.set_finite_iff
    |>.mpr NoetherianSpace.finite_irreducibleComponents

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Noetherian/Variant237ec2ee761369239b2dae3135b590014f929f55efef619abef42918f07800fa.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22fbe4774064f0357c57bc644e3d6e5d36005ffe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
