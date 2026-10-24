# ResidueTheoremAtOrigin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "349ef03144a8a1ad63651157ba9d40c6344a51ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 603,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4fb873b6-e3af-e5bd-39b9-54703bb5c55c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a6c2e8ff-ebdc-1ad5-9f9d-4c998544817a",
  "kind": "lemma",
  "lexical_name": "ResidueTheoremAtOrigin",
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
  "slug": "residuetheorematorigin--ce8a51541f46adea1ad0dc40",
  "source": {
    "blob": "349ef03144a8a1ad63651157ba9d40c6344a51ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 628,
    "line": 603,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce8a51541f46adea1ad0dc40ff1f293de29497be10277fdd02484e548653b530",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6c2e8ff-ebdc-1ad5-9f9d-4c998544817a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–628.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ResidueTheoremAtOrigin :
    RectangleIntegral' (fun s ↦ 1 / s) (-1 - I) (1 + I) = 1 := by
  rw [RectangleIntegral', ResidueTheoremAtOrigin']
  all_goals simp [field]

@[blueprint
  (title := "ResidueTheoremOnRectangleWithSimplePole")
  (statement := /--
  Suppose that $f$ is a holomorphic function on a rectangle,
  except for a simple pole at $p$.
  By the latter, we mean that there is a function $g$
  holomorphic on the rectangle such that,
  $f = g + A/(s-p)$ for some $A\in\C$. Then the integral of
  $f$ over the rectangle is $A$.
  -/)
  (proof := /--
  Replace $f$ with $g + A/(s-p)$ in the integral.
  The integral of $g$ vanishes by
  Lemma \ref{HolomorphicOn.vanishesOnRectangle}.
  To evaluate the integral of $1/(s-p)$, pull everything to a
  square about the origin using
  Lemma \ref{RectanglePullToNhdOfPole}, and rescale by $c$;
  what remains is handled by
  Lemma \ref{ResidueTheoremAtOrigin}.
  -/)
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variant8a34f233a9182099d1316caf9dc93c729bf741c748270cef308dfc5912f803a6.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349ef03144a8a1ad63651157ba9d40c6344a51ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
