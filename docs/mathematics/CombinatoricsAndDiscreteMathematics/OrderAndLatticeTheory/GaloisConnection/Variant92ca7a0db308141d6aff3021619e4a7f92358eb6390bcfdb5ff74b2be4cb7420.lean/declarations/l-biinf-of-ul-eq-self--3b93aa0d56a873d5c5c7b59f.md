# l_biInf_of_ul_eq_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27f4be91-a0ac-1c2e-8ead-eb34ce48168a",
  "kind": "theorem",
  "lexical_name": "l_biInf_of_ul_eq_self",
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
  "slug": "l-biinf-of-ul-eq-self--3b93aa0d56a873d5c5c7b59f",
  "source": {
    "blob": "b9e516fa8237a95509dd0e12c015fd48727b205f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 608,
    "line": 602,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b93aa0d56a873d5c5c7b59fb0885bc7982f7c954fa7d230d2a4a86d2477841b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27f4be91-a0ac-1c2e-8ead-eb34ce48168a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 602–608.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem l_biInf_of_ul_eq_self [CompleteLattice α] [CompleteLattice β] (gi : GaloisInsertion l u)
    {ι : Sort x} {p : ι → Prop} (f : ∀ (i) (_ : p i), α) (hf : ∀ i hi, u (l (f i hi)) = f i hi) :
    l (⨅ (i) (hi), f i hi) = ⨅ (i) (hi), l (f i hi) := by
  rw [iInf_subtype', iInf_subtype']
  exact gi.l_iInf_of_ul_eq_self _ fun _ => hf _ _
#align galois_insertion.l_binfi_of_ul_eq_self GaloisInsertion.l_biInf_of_ul_eq_self

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Variant92ca7a0db308141d6aff3021619e4a7f92358eb6390bcfdb5ff74b2be4cb7420.lean#L602).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e516fa8237a95509dd0e12c015fd48727b205f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
