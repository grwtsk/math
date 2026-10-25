# genericPolyMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:596edd3b36f63192fac2e63aa7ee5be34315e6491900bd4afb69d986e230aaf5",
  "kind": "def",
  "lexical_name": "genericPolyMap",
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
  "slug": "genericpolymap--88470ebb9d27dfa7baa94861",
  "source": {
    "blob": "41afea5e2bb0b6de5d315056797b5989b679a85d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 51,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantf0b48a276b1d1953a0aa93be74beba373f01f2d76d57371797d794563275c457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88470ebb9d27dfa7baa94861a7c5eecd4bbb1ee7e1a0a139c6c8f7b92c15ebbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantf0b48a276b1d1953a0aa93be74beba373f01f2d76d57371797d794563275c457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:596edd3b36f63192fac2e63aa7ee5be34315e6491900bd4afb69d986e230aaf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def genericPolyMap (monoms : ι → Finset (κ →₀ ℕ)) :
    ι → FreeCommRing ((Σ i : ι, monoms i) ⊕ κ) :=
  fun i => (monoms i).attach.sum
    (fun m => FreeCommRing.of (Sum.inl ⟨i, m⟩) *
      Finsupp.prod m.1 (fun j n => FreeCommRing.of (Sum.inr j) ^ n))

/-- Collections of `MvPolynomial`s, `p : ι → MvPolynomial κ R` such
that `∀ i, (p i).support ⊆ monoms i` can be identified with functions
`(Σ i, monoms i) → R` by using the coefficient function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantf0b48a276b1d1953a0aa93be74beba373f01f2d76d57371797d794563275c457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variantf0b48a276b1d1953a0aa93be74beba373f01f2d76d57371797d794563275c457.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41afea5e2bb0b6de5d315056797b5989b679a85d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
