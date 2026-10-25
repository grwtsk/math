# sign_subtypePerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcfed721-fc20-f08b-ab92-7df29b3ac721",
  "kind": "theorem",
  "lexical_name": "sign_subtypePerm",
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
  "slug": "sign-subtypeperm--3fbae758b3ac35cefc3f7587",
  "source": {
    "blob": "78c5c6732f9c48a4db6c180e171215eea347839d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 461,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fbae758b3ac35cefc3f758771decdee8508b7b399587077c3d60e2d14aa0ac1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcfed721-fc20-f08b-ab92-7df29b3ac721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sign_subtypePerm (f : Perm α) {p : α → Prop} [DecidablePred p] (h₁ : ∀ x, p (f x) ↔ p x)
    (h₂ : ∀ x, f x ≠ x → p x) : sign (subtypePerm f h₁) = sign f := by
  let l := (truncSwapFactors (subtypePerm f h₁)).out
  have hl' : ∀ g' ∈ l.1.map ofSubtype, IsSwap g' := fun g' hg' =>
    let ⟨g, hg⟩ := List.mem_map.1 hg'
    hg.2 ▸ (l.2.2 _ hg.1).of_subtype_isSwap
  have hl'₂ : (l.1.map ofSubtype).prod = f := by
    rw [l.1.prod_hom ofSubtype, l.2.1, ofSubtype_subtypePerm _ h₂]
  conv =>
    congr
    rw [← l.2.1]
  simp_rw [← hl'₂]
  rw [sign_prod_list_swap l.2.2, sign_prod_list_swap hl', List.length_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variant0d6e99fca2029dc78cf11b5b584d55f86aad8983e32fda69be3676fc8d68da49.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78c5c6732f9c48a4db6c180e171215eea347839d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
