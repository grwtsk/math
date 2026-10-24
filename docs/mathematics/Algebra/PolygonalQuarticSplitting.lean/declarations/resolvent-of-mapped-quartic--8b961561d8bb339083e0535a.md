# resolvent_of_mapped_quartic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "562bd38c5dd2f696177d3070a952d49a02c86338",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/Algebra/PolygonalQuarticSplitting.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95cb41ff-e3c2-bcb3-b7e2-2b9c284970cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c7b21ef9-bf82-6de1-ac96-cc7c99403c1d",
  "kind": "theorem",
  "lexical_name": "resolvent_of_mapped_quartic",
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
  "slug": "resolvent-of-mapped-quartic--8b961561d8bb339083e0535a",
  "source": {
    "blob": "562bd38c5dd2f696177d3070a952d49a02c86338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/Algebra/PolygonalQuarticSplitting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b961561d8bb339083e0535a3a68625972ac93a9c7f693740c3310ea5bad9124",
  "verification": {
    "reference": "docs/verification/Algebra/PolygonalQuarticSplitting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7b21ef9-bf82-6de1-ac96-cc7c99403c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem resolvent_of_mapped_quartic (p : K[X])
    (hs : (mappedQuartic (L := L) p).Splits)
    (hm : (mappedQuartic (L := L) p).Monic)
    (e : QuarticRootEnumeration (L := L) p) (A B C₀ D : L)
    (hcoeff : mappedQuartic (L := L) p =
      X ^ 4 + Polynomial.C A * X ^ 3 + Polynomial.C B * X ^ 2 +
        Polynomial.C C₀ * X + Polynomial.C D) :
    adjacencyResolventFromRoots (e.r 0) (e.r 1) (e.r 2) (e.r 3) =
      adjacencyResolventOfMonicCoefficients A B C₀ D := by
  exact resolvent_of_actual_factored_quartic
    (mappedQuartic (L := L) p) (e.r 0) (e.r 1) (e.r 2) (e.r 3)
    A B C₀ D (monic_factorization_of_root_enumeration p hs hm e) hcoeff

/-- Relabelling any chosen enumeration leaves the resolvent unchanged,
without requiring that the enumeration itself be canonical. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/PolygonalQuarticSplitting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolygonalQuarticSplitting.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `562bd38c5dd2f696177d3070a952d49a02c86338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
