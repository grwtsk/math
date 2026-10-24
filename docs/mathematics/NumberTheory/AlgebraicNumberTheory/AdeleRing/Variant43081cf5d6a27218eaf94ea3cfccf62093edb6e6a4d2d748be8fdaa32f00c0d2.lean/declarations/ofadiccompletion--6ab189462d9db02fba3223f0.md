# ofAdicCompletion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:324222c6678309cb8da72e021da005b4c9638ee60e2c2837f1649d6283a96d46",
  "kind": "def",
  "lexical_name": "ofAdicCompletion",
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
  "slug": "ofadiccompletion--6ab189462d9db02fba3223f0",
  "source": {
    "blob": "fd20fdd9133ca603dea367859bc48444416d464e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 107,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ab189462d9db02fba3223f03275a77a4afb9bb8884059a69b199882b005e469",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:324222c6678309cb8da72e021da005b4c9638ee60e2c2837f1649d6283a96d46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofAdicCompletion (v : HeightOneSpectrum R) : (v.adicCompletion K)ˣ →* IdeleGroup R K :=
  Units.map (AdeleRing.ofAdicCompletion R K v)

/-- The subgroup of principal ideles `(x)ᵥ` where `x ∈ Kˣ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/AdeleRing/Variant43081cf5d6a27218eaf94ea3cfccf62093edb6e6a4d2d748be8fdaa32f00c0d2.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd20fdd9133ca603dea367859bc48444416d464e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
