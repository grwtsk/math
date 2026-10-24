# cons'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39d6c26b-9b58-a22d-e0c7-022fb8e2828f",
  "kind": "lemma",
  "lexical_name": "cons'",
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
  "slug": "cons--4cce2ead6d797ae0b8d3277b",
  "source": {
    "blob": "8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 286,
    "path": "GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cce2ead6d797ae0b8d3277b80cedec30b2e1391adc6a6da292e77b2c0c79ed5",
  "verification": {
    "reference": "docs/verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39d6c26b-9b58-a22d-e0c7-022fb8e2828f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cons' {r : R} {rs : List R} (h1 : IsSMulRegular M r)
    (h2 : IsWeaklyRegular (QuotSMulTop r M)
            (rs.map (Ideal.Quotient.mk (Ideal.span {r})))) :
    IsWeaklyRegular M (r :: rs) :=
  (isWeaklyRegular_cons_iff' M r rs).mpr ⟨h1, h2⟩

/-- Weakly regular sequences can be inductively characterized by:
* The empty sequence is weakly regular on any module.
* If `r` is regular on `M` and `rs` is a weakly regular sequence on `M⧸rM` then
  the sequence obtained from `rs` by prepending `r` is weakly regular on `M`.

This is the induction principle produced by the inductive definition above.
The motive will usually be valued in `Prop`, but `Sort*` works too. -/
@[induction_eliminator]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RegularSequence/Variant48f48cfe53facb84295256b53a5d3aa35575875913d6ba9ea09ec0c103832d37.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dc8fbf34801ddba52953c5a35aa51d0ddbb6ba4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
