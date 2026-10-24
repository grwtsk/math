# ker_isPGroup_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ef89202-f105-771a-544c-8a353f31be64",
  "kind": "theorem",
  "lexical_name": "ker_isPGroup_of_injective",
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
  "slug": "ker-ispgroup-of-injective--1b31207d55f338ee024f99a6",
  "source": {
    "blob": "fd3698d4f1049d776ffb2485c0a03a9ee8e17956",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 263,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b31207d55f338ee024f99a6b399643258a12fbbd581c37ec7e4f4b7aefa820a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ef89202-f105-771a-544c-8a353f31be64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ker_isPGroup_of_injective {K : Type*} [Group K] {ϕ : K →* G} (hϕ : Function.Injective ϕ) :
    IsPGroup p ϕ.ker :=
  (congr_arg (fun Q : Subgroup K => IsPGroup p Q) (ϕ.ker_eq_bot_iff.mpr hϕ)).mpr IsPGroup.of_bot

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3698d4f1049d776ffb2485c0a03a9ee8e17956` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
