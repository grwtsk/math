# GrowsPolynomially.of_isEquivalent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dafb462b-1916-b5fe-c11b-14e49c0b5058",
  "kind": "lemma",
  "lexical_name": "GrowsPolynomially.of_isEquivalent",
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
  "slug": "growspolynomially-of-isequivalent--fffc5c1700cc347beea014f5",
  "source": {
    "blob": "ebc4480187c09e3283587c150206252ceb767a7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 684,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fffc5c1700cc347beea014f505dcbf193f323f74af78cccfc6b0fdab945b5257",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dafb462b-1916-b5fe-c11b-14e49c0b5058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 684–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GrowsPolynomially.of_isEquivalent {f g : ℝ → ℝ} (hg : GrowsPolynomially g)
    (hf : f ~[atTop] g) : GrowsPolynomially f := by
  have : f = g + (f - g) := by ext; simp
  rw [this]
  exact add_isLittleO hg hf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GrowsPolynomially/Variant9ea1f062a7c188b8ca5aef1df024b9bef0c7417353b621ce19caf6c637b367bd.lean#L684).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebc4480187c09e3283587c150206252ceb767a7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
