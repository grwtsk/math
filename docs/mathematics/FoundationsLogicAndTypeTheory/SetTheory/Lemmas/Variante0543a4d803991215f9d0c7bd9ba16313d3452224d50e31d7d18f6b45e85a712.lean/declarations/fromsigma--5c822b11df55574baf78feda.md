# fromSigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b65e23702e9f9732d8b7e3592233d394cf1687d6e046109502fd122c99a9fc6c",
  "kind": "def",
  "lexical_name": "fromSigma",
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
  "slug": "fromsigma--5c822b11df55574baf78feda",
  "source": {
    "blob": "7efde9fc2a86036f904858d12de115310e390a99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c822b11df55574baf78feda4a9cd7b780d7ba34dd16252e5159e8d00289af50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b65e23702e9f9732d8b7e3592233d394cf1687d6e046109502fd122c99a9fc6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromSigma (x : Σ (κ' : Set.Iio κ), κ'.val.ord.ToType → X) : SetCardinalLT κ X :=
  ⟨Set.range x.2,
    HasCardinalLT.of_surjective
      (by simpa only [hasCardinalLT_iff_cardinal_mk_lt,
        Cardinal.mk_toType, Cardinal.card_ord] using! x.1.prop) _
      Set.rangeFactorization_surjective⟩

/-- If `X` is a type, then any subset of `X` that is of cardinality `< κ` can
be obtained as the range of a map `κ'.ord.ToType → X` for some `κ' < κ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Lemmas/Variante0543a4d803991215f9d0c7bd9ba16313d3452224d50e31d7d18f6b45e85a712.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7efde9fc2a86036f904858d12de115310e390a99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
