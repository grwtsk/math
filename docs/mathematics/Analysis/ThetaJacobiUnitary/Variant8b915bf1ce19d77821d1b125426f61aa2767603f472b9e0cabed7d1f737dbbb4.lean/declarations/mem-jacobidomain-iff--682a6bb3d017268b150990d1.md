# mem_jacobiDomain_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bfc8424-b8c4-5a4e-5dba-810624032826",
  "kind": "theorem",
  "lexical_name": "mem_jacobiDomain_iff",
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
  "slug": "mem-jacobidomain-iff--682a6bb3d017268b150990d1",
  "source": {
    "blob": "0c51c4e8da48186d3a1390eae01b010fe48b06fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 163,
    "path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:682a6bb3d017268b150990d13a6c5068aa160b5d8bd1b45192de1c7a5eee8182",
  "verification": {
    "reference": "docs/verification/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bfc8424-b8c4-5a4e-5dba-810624032826`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_jacobiDomain_iff {t : ℝ} (ht : 0 ≤ t) (f : lp (fun _ : ℕ => ℂ) 2) :
    f ∈ jacobiDomain t ht ↔ pointedUnitary t ht f ∈ coordinateDomain (momentMeasure t) :=
  Iff.rfl

/-- The same unitary restricted to the literal maximal domains. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c51c4e8da48186d3a1390eae01b010fe48b06fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
