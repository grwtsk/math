# JacobiSym.mod_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc0d3be4-10a4-b26d-4f03-8ce65f74d268",
  "kind": "theorem",
  "lexical_name": "JacobiSym.mod_left",
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
  "slug": "jacobisym-mod-left--40d3ec2c3e7dd318047d1b8c",
  "source": {
    "blob": "b9e3f9daf6cfafa30271e06d55a9ae801262405b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 100,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40d3ec2c3e7dd318047d1b8cfaba9910e44a508c03ccc23784f2cb46bbfc207d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc0d3be4-10a4-b26d-4f03-8ce65f74d268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem JacobiSym.mod_left (a : ℤ) (b ab' : ℕ) (ab r b' : ℤ) (hb' : (b : ℤ) = b')
    (hab : a % b' = ab) (h : (ab' : ℤ) = ab) (hr : jacobiSymNat ab' b = r) : jacobiSym a b = r := by
  rw [← hr, jacobiSymNat, jacobiSym.mod_left, hb', hab, ← h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variant44c5d837ac960d91d10dffd4b9e8e3e44a86948013ac10be41aef9c5fb22ce92.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e3f9daf6cfafa30271e06d55a9ae801262405b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
