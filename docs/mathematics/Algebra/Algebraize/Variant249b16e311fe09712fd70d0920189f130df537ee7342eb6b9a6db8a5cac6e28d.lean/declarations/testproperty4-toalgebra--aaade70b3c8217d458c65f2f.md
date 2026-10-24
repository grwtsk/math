# testProperty4.toAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25b3073e-fe72-c2f0-a66b-02290b87db5d",
  "kind": "lemma",
  "lexical_name": "testProperty4.toAlgebra",
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
  "slug": "testproperty4-toalgebra--aaade70b3c8217d458c65f2f",
  "source": {
    "blob": "d9a9d7dafe02aa8c97a272d50d38d2cbdcd5378a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 64,
    "path": "GRWTSK/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaade70b3c8217d458c65f2fbc2cde690ed87369beef1018622a7e1be01f5201",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25b3073e-fe72-c2f0-a66b-02290b87db5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma testProperty4.toAlgebra (n : ℕ) {A B : Type*} [CommRing A] [CommRing B] (f : A →+* B)
    (hf : f.testProperty4 n) :
    letI : Algebra A B := f.toAlgebra
    Algebra.testProperty4 n A B :=
      letI : Algebra A B := f.toAlgebra
      { out := hf }

end example_definitions

set_option tactic.hygienic false

/-- Synthesize algebra instance from ring hom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9a9d7dafe02aa8c97a272d50d38d2cbdcd5378a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
