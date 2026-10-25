# ModelsBoundedFormula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bab00dcc52f44a81b0a0ecbc2f87fce0fe929b5582bf4776d85ffba10f6f7229",
  "kind": "def",
  "lexical_name": "ModelsBoundedFormula",
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
  "slug": "modelsboundedformula--f7d72a19e42698639dc5559f",
  "source": {
    "blob": "349be7f0278540609f6bbf48d130e2e5b67afe5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 280,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f7d72a19e42698639dc5559fa91642c65243af4713426e4a641c90b46d2c1062",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bab00dcc52f44a81b0a0ecbc2f87fce0fe929b5582bf4776d85ffba10f6f7229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModelsBoundedFormula (φ : L.BoundedFormula α n) : Prop :=
  ∀ (M : ModelType.{u, v, max u v w} T) (v : α → M) (xs : Fin n → M), φ.Realize v xs

@[inherit_doc FirstOrder.Language.Theory.ModelsBoundedFormula]
infixl:51 " ⊨ᵇ " => ModelsBoundedFormula -- input using \|= or \vDash, but not using \models

variable {T}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variant148f13ccecb52fa9e9fe2a5d756537232d3c8ec48623eb821b2cdb7f34c705ba.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349be7f0278540609f6bbf48d130e2e5b67afe5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
