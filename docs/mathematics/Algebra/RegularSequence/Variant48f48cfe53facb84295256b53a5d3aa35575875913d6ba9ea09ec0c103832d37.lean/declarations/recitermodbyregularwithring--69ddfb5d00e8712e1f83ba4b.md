# recIterModByRegularWithRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89b35636a062bfd553698902165ef55d31b089dddb602a0dc05acb95f139eb43",
  "kind": "def",
  "lexical_name": "recIterModByRegularWithRing",
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
  "slug": "recitermodbyregularwithring--69ddfb5d00e8712e1f83ba4b",
  "source": {
    "blob": "8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 462,
    "path": "GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69ddfb5d00e8712e1f83ba4b7bc44253359a50ad910b9d11c33b37406bd4acbe",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89b35636a062bfd553698902165ef55d31b089dddb602a0dc05acb95f139eb43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recIterModByRegularWithRing
    {motive : (R : Type u) → [CommRing R] → (M : Type v) → [AddCommGroup M] →
      [Module R M] → (rs : List R) → IsRegular M rs → Sort*}
    (nil : (R : Type u) → [CommRing R] → (M : Type v) → [AddCommGroup M] →
      [Module R M] → [Nontrivial M] → motive R M [] (nil R M))
    (cons : {R : Type u} → [CommRing R] → {M : Type v} → [AddCommGroup M] →
      [Module R M] → (r : R) → (rs : List R) → (h1 : IsSMulRegular M r) →
      (h2 : IsRegular (QuotSMulTop r M)
              (rs.map (Ideal.Quotient.mk (Ideal.span {r})))) →
      (ih : motive (R ⧸ Ideal.span {r}) (QuotSMulTop r M)
              (rs.map (Ideal.Quotient.mk (Ideal.span {r}))) h2) →
            motive R M (r :: rs) (cons' h1 h2))
    {R} [CommRing R] {M} [AddCommGroup M] [Module R M] {rs}
    (h : IsRegular M rs) : motive R M rs h :=
  h.toIsWeaklyRegular.recIterModByRegularWithRing
    (motive := fun R _ N _ _ rs' h' => ∀ h'', motive R N rs' ⟨h', h''⟩)
    (fun R _ N _ _ h' =>
      haveI := (nontrivial_iff R).mp (nontrivial_of_ne _ _ h'); nil R N)
    (fun r rs' h1 h2 h3 h4 =>
      have ⟨h5, h6⟩ := (isRegular_cons_iff' _ _ _).mp ⟨h2.cons' h1, h4⟩
      cons r rs' h5 h6 <| h3 h6.top_ne_smul)
    h.top_ne_smul

/-- A simplified version of `IsRegular.recIterModByRegularWithRing` where the
motive is not allowed to depend on the proof of `IsRegular`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
