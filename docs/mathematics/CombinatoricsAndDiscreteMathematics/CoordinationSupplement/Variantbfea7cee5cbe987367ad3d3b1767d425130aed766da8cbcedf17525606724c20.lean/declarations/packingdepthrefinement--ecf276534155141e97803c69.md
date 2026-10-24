# PackingDepthRefinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56b2b99abe7e0b997568729ac594ed36f6bf246c15c863a9547d9a5165b84a76",
  "kind": "def",
  "lexical_name": "PackingDepthRefinement",
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
  "slug": "packingdepthrefinement--ecf276534155141e97803c69",
  "source": {
    "blob": "5fa11fbd2fc15f91ecd83091f470d025ebbeed38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecf276534155141e97803c6972ac6a752a17a033dcf5b8525f01e82df03c8e29",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56b2b99abe7e0b997568729ac594ed36f6bf246c15c863a9547d9a5165b84a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PackingDepthRefinement : Prop :=
  (∀ (p r : ℕ) (z : ℤ), PackingObservations.cappedValuation p r z ≤ r) ∧
  (∀ p r : ℕ, PackingObservations.cappedValuation p r 0 = r) ∧
  (∀ (p r k : ℕ) (z : ℤ), p.Prime → k ≤ r →
    (k ≤ PackingObservations.cappedValuation p r z ↔ (p : ℤ) ^ k ∣ z)) ∧
  (∀ (y r : ℕ) (H : Finset ℤ) (n m : ℤ),
    PackingObservations.ObservationalEquivalence y r H n m ↔
      ∀ p, p ≤ y → p.Prime → ∀ h ∈ H,
        PackingObservations.cappedValuation p r (n + h) =
          PackingObservations.cappedValuation p r (m + h)) ∧
  (∀ (y y' r r' : ℕ) (H : Finset ℤ) (n m : ℤ), y ≤ y' → r ≤ r' →
    PackingObservations.ObservationalEquivalence y' r' H n m →
      PackingObservations.ObservationalEquivalence y r H n m)

/-- Existing capped-valuation and projection proofs give both refinement
coordinates without treating the nested observations as independent events. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CoordinationSupplement/Variantbfea7cee5cbe987367ad3d3b1767d425130aed766da8cbcedf17525606724c20.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa11fbd2fc15f91ecd83091f470d025ebbeed38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
