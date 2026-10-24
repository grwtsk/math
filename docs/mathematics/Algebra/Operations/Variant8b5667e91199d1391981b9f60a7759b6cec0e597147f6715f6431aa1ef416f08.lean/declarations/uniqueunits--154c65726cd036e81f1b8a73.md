# uniqueUnits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e5a4bdea7d82efdfb262518370a29c945a3e58cefb3e117e55634426be75393",
  "kind": "instance",
  "lexical_name": "uniqueUnits",
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
  "slug": "uniqueunits--154c65726cd036e81f1b8a73",
  "source": {
    "blob": "499b320f9e65958ff3b7591df57348f9eecbe7fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1167,
    "line": 1151,
    "path": "GRWTSK/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:154c65726cd036e81f1b8a730181ecaf36d8348ea5ce657a96c34a63996a3adb",
  "verification": {
    "reference": "docs/verification/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e5a4bdea7d82efdfb262518370a29c945a3e58cefb3e117e55634426be75393`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1151–1167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance uniqueUnits : Unique (Ideal R)ˣ where
  default := 1
  uniq u := Units.ext (show (u : Ideal R) = 1 by rw [isUnit_iff.mp u.isUnit, one_eq_top])

end Dvd

end MulAndRadical



section Total

variable (ι : Type*)
variable (M : Type*) [AddCommGroup M] {R : Type*} [CommRing R] [Module R M] (I : Ideal R)
variable (v : ι → M) (hv : Submodule.span R (Set.range v) = ⊤)

/-- A variant of `Finsupp.linearCombination` that takes in vectors valued in `I`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Operations/Variant8b5667e91199d1391981b9f60a7759b6cec0e597147f6715f6431aa1ef416f08.lean#L1151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `499b320f9e65958ff3b7591df57348f9eecbe7fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
