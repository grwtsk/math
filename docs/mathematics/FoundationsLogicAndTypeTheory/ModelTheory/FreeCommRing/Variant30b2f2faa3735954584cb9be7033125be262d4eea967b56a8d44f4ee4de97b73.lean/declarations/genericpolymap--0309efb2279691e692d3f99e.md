# genericPolyMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:05a964379ab54849439decde2e811c3f0edcca9c3133afdfbcd97a233ca97f5c",
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
  "slug": "genericpolymap--0309efb2279691e692d3f99e",
  "source": {
    "blob": "e8a4b12e6986fc78c98b9e7793fae926960cb82d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0309efb2279691e692d3f99e1b7ae007c3dcf7fc6dc21a805cfeb15dc425b829",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:05a964379ab54849439decde2e811c3f0edcca9c3133afdfbcd97a233ca97f5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def genericPolyMap (monoms : ι → Finset (κ →₀ ℕ)) :
    ι → FreeCommRing ((Σ i : ι, monoms i) ⊕ κ) :=
  fun i => (monoms i).attach.sum
    (fun m => FreeCommRing.of (Sum.inl ⟨i, m⟩) *
      Finsupp.prod m.1 (fun j n => FreeCommRing.of (Sum.inr j)^ n))

/-- Collections of `MvPolynomial`s, `p : ι → MvPolynomial κ R` such
that `∀ i, (p i).support ⊆ monoms i` can be identified with functions
`(Σ i, monoms i) → R` by using the coefficient function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/FreeCommRing/Variant30b2f2faa3735954584cb9be7033125be262d4eea967b56a8d44f4ee4de97b73.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8a4b12e6986fc78c98b9e7793fae926960cb82d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
