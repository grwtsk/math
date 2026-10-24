# HeightOneSpectrum.Support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fabefba219d85bb6b8055bb030b6a2154b98df91093307c2613c438671d7076b",
  "kind": "def",
  "lexical_name": "HeightOneSpectrum.Support",
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
  "slug": "heightonespectrum-support--11821b12fe4cd350b484a7e5",
  "source": {
    "blob": "e9aa4e8de4293bccb1dee90bfc365764e2c4dff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 46,
    "path": "GRWTSK/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11821b12fe4cd350b484a7e53af8ace073a9a9cf473768ff9bd87be737a81616",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fabefba219d85bb6b8055bb030b6a2154b98df91093307c2613c438671d7076b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def HeightOneSpectrum.Support (k : K) : Set (HeightOneSpectrum R) :=
    {v : HeightOneSpectrum R | 1 < v.valuation K k}

/--
The support of an element of the field of fractions of a Dedekind domain
is finite.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteAdeleRing/Variant39feee2bcef270d2c813fe1fd43d2cf15dc200cbd9d0cae6d710e93f02edd436.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9aa4e8de4293bccb1dee90bfc365764e2c4dff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
