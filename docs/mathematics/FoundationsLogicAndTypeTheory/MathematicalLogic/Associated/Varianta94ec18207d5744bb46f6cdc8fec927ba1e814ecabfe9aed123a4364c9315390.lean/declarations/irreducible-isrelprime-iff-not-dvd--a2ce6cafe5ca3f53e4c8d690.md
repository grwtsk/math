# Irreducible.isRelPrime_iff_not_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e132f74-5980-ce69-26a9-99e820b782a8",
  "kind": "lemma",
  "lexical_name": "Irreducible.isRelPrime_iff_not_dvd",
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
  "slug": "irreducible-isrelprime-iff-not-dvd--a2ce6cafe5ca3f53e4c8d690",
  "source": {
    "blob": "e0aa93d759afbb68b836045cf92e7342a84da615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 344,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2ce6cafe5ca3f53e4c8d6908dcda2f07cb902eb2817aef5bf1cd3d90f005312",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e132f74-5980-ce69-26a9-99e820b782a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Irreducible.isRelPrime_iff_not_dvd [Monoid M] {p n : M} (hp : Irreducible p) :
    IsRelPrime p n ↔ ¬ p ∣ n := by
  refine ⟨fun h contra ↦ hp.not_isUnit (h dvd_rfl contra), fun hpn d hdp hdn ↦ ?_⟩
  contrapose! hpn
  suffices Associated p d from this.dvd.trans hdn
  exact (hp.dvd_iff.mp hdp).resolve_left hpn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Associated/Varianta94ec18207d5744bb46f6cdc8fec927ba1e814ecabfe9aed123a4364c9315390.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0aa93d759afbb68b836045cf92e7342a84da615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
