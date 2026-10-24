# coinvariantsTensorResProjectiveResolutionIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f19f0fbce8864d058c47cf1c3fc1be5aedc897c08b0b368cfe07baef8c98421",
  "kind": "abbrev",
  "lexical_name": "coinvariantsTensorResProjectiveResolutionIso",
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
  "slug": "coinvariantstensorresprojectiveresolutioniso--6024fbcc45c1d37737b2cc3a",
  "source": {
    "blob": "13cb6d3ce7c74d69e49b0fdf4aeca6d206017d44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapiro/Variantd186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6024fbcc45c1d37737b2cc3a13adb0c97aead9fcef764f77d56d38f699cb9896",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapiro/Variantd186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f19f0fbce8864d058c47cf1c3fc1be5aedc897c08b0b368cfe07baef8c98421`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev coinvariantsTensorResProjectiveResolutionIso
    (P : ProjectiveResolution (Rep.trivial k G k)) :
    ((resFunctor S.subtype).mapProjectiveResolution P).complex.coinvariantsTensorObj A ≅
      P.complex.coinvariantsTensorObj (ind S.subtype A) :=
  (NatIso.mapHomologicalComplex (coinvariantsTensorIndNatIso S.subtype A).symm _).app _

-- The smiley face in this proof can be avoided if you replace `ind` with `ind.{_, _, _, u}`.
-- The proof still compiles without this, but it takes much longer because of universe
-- unification issues.
-- Similarly, replacing `resFunctor.{u}` with `resFunctor` works but makes the proof
-- three times as slow.
/-- Shapiro's lemma: given a subgroup `S ≤ G` and an `S`-representation `A`, we have
`Hₙ(G, Ind_S^G(A)) ≅ Hₙ(S, A).` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapiro/Variantd186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shapiro/Variantd186970a3038fae38b797b624ec25a34ea6302e0e2f50d90ed2fe239d06a3784.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13cb6d3ce7c74d69e49b0fdf4aeca6d206017d44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
