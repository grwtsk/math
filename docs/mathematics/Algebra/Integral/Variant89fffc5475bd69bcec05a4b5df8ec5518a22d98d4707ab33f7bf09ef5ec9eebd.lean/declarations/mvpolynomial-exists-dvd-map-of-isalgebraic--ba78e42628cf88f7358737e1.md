# MvPolynomial.exists_dvd_map_of_isAlgebraic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e526f7b3132d857de949d9dbd79e1352b9dedf5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca55af3b-0526-cb03-29be-ddf33a9baa1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bc91f38f-6faa-6bb0-33f9-d682fa518ab4",
  "kind": "theorem",
  "lexical_name": "MvPolynomial.exists_dvd_map_of_isAlgebraic",
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
  "slug": "mvpolynomial-exists-dvd-map-of-isalgebraic--ba78e42628cf88f7358737e1",
  "source": {
    "blob": "e526f7b3132d857de949d9dbd79e1352b9dedf5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 648,
    "path": "GRWTSK/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba78e42628cf88f7358737e12e3c455c5c6506c78f75d34a56113feb7a74fbd8",
  "verification": {
    "reference": "docs/verification/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc91f38f-6faa-6bb0-33f9-d682fa518ab4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MvPolynomial.exists_dvd_map_of_isAlgebraic {σ}
    [NoZeroDivisors S] {f : MvPolynomial σ S} (hf : f ≠ 0) :
    ∃ g : MvPolynomial σ R, g ≠ 0 ∧ f ∣ g.map (algebraMap R S) :=
  (Algebra.IsAlgebraic.isAlgebraic f).exists_nonzero_dvd (mem_nonZeroDivisors_of_ne_zero hf)

variable [IsDomain S] [FaithfulSMul R S]

attribute [local instance] FractionRing.liftAlgebra

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integral/Variant89fffc5475bd69bcec05a4b5df8ec5518a22d98d4707ab33f7bf09ef5ec9eebd.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e526f7b3132d857de949d9dbd79e1352b9dedf5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
