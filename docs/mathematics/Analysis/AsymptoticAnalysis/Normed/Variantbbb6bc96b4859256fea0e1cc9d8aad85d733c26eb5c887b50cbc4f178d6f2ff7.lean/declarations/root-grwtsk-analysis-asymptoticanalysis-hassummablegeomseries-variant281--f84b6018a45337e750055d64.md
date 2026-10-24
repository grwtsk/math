# _root_.GRWTSK.Analysis.AsymptoticAnalysis.HasSummableGeomSeries.Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.iterate_mul_succ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e268796e-6d6b-f6d3-3a7b-37edf3f81141",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.AsymptoticAnalysis.HasSummableGeomSeries.Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.iterate_mul_succ'",
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
  "slug": "root-grwtsk-analysis-asymptoticanalysis-hassummablegeomseries-variant281--f84b6018a45337e750055d64",
  "source": {
    "blob": "32c9420e5d37f8b4d36774645392bf66942cdfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 292,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f84b6018a45337e750055d64c1f5d147a25fb13d151654dc9905a0d5ba4ea480",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e268796e-6d6b-f6d3-3a7b-37edf3f81141`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma _root_.GRWTSK.Analysis.AsymptoticAnalysis.HasSummableGeomSeries.Variant281b0bb77fdc58f9c98d50cc626303bf30d7302c48d3ae8522d071ad07d40480.iterate_mul_succ' {G : Type*} [Semigroup G] (x : G)
    (n : ℕ) : (· * x)^[n + 1] x = x * (· * x)^[n] x := by
  induction n with
  | zero => simp
  | succ n ih => rw [iterate_succ_apply' _ n, ← mul_assoc, ← ih, iterate_succ_apply']

section NonUnitalNormedRing

variable {R : Type*} [NonUnitalNormedRing R]

-- this lemma should be removed (and unnecessary) once we have a `Pow G ℕ+` instance for semigroups
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Normed/Variantbbb6bc96b4859256fea0e1cc9d8aad85d733c26eb5c887b50cbc4f178d6f2ff7.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32c9420e5d37f8b4d36774645392bf66942cdfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
