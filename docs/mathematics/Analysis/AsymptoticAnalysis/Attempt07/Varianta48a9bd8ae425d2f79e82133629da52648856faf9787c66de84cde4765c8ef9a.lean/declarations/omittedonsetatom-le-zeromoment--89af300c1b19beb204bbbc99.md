# omittedOnsetAtom_le_zeroMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d53b3c28-ac7d-1f51-b91a-1b4d2568aeff",
  "kind": "theorem",
  "lexical_name": "omittedOnsetAtom_le_zeroMoment",
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
  "slug": "omittedonsetatom-le-zeromoment--89af300c1b19beb204bbbc99",
  "source": {
    "blob": "cee137fce273b01d56a98f8b5148bfce2dc901bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 200,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89af300c1b19beb204bbbc995a35f919e4fd35a9427c8dbc9924350d0e09d69d",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d53b3c28-ac7d-1f51-b91a-1b4d2568aeff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omittedOnsetAtom_le_zeroMoment (t : ℝ) (p : Nat.Primes) (k : ℕ) :
    omittedOnsetAtom t p k ≤ primeMomentAtom 0 p k := by
  unfold omittedOnsetAtom primeMomentAtom momentAtom
  split_ifs
  · simp
  · exact momentAtom_nonneg 0 p.val k

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Attempt07/Varianta48a9bd8ae425d2f79e82133629da52648856faf9787c66de84cde4765c8ef9a.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cee137fce273b01d56a98f8b5148bfce2dc901bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
