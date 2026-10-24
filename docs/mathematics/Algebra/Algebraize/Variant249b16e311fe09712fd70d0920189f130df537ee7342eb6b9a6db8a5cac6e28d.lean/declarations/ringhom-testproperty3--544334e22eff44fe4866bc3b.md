# RingHom.testProperty3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd8982288f08728a00217963a659a8010bc343a59ca2108292a13a069bdf9920",
  "kind": "def",
  "lexical_name": "RingHom.testProperty3",
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
  "slug": "ringhom-testproperty3--544334e22eff44fe4866bc3b",
  "source": {
    "blob": "d9a9d7dafe02aa8c97a272d50d38d2cbdcd5378a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 48,
    "path": "GRWTSK/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:544334e22eff44fe4866bc3b99f4487bcad7c1422e81e9be517328461731b173",
  "verification": {
    "reference": "docs/verification/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd8982288f08728a00217963a659a8010bc343a59ca2108292a13a069bdf9920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RingHom.testProperty3 {A B : Type*} [CommRing A] [CommRing B] (f : A →+* B) : Prop :=
  f.testProperty1

/- Test property for when the `RingHom` (and `Algebra`) property have an extra explicit argument,
and hence needs to be created through a lemma. See e.g.
`Algebra.IsStandardSmoothOfRelativeDimension` for an example. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebraize/Variant249b16e311fe09712fd70d0920189f130df537ee7342eb6b9a6db8a5cac6e28d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9a9d7dafe02aa8c97a272d50d38d2cbdcd5378a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
