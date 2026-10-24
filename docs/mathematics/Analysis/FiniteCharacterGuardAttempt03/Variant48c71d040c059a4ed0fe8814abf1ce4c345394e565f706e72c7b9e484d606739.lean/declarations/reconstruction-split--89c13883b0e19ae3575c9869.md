# reconstruction_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3f5d53b9-3c98-3904-869e-7812849b71cb",
  "kind": "theorem",
  "lexical_name": "reconstruction_split",
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
  "slug": "reconstruction-split--89c13883b0e19ae3575c9869",
  "source": {
    "blob": "bdbdbe2984f1c89ca7fb1f820af52bead5e15808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 62,
    "path": "GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c13883b0e19ae3575c986908b1d9b6b685cbc5f62b400582e227a13e1e3247",
  "verification": {
    "reference": "docs/verification/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f5d53b9-3c98-3904-869e-7812849b71cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reconstruction_split (f : G → ℂ) :
    f = incompleteReconstruction f +
      coefficientMap (0 : AddChar G ℂ) f • (fun _ : G => (1 : ℂ)) := by
  classical
  have hsum := Finset.sum_erase_add Finset.univ
    (fun character : AddChar G ℂ => coefficientMap character f • (character : G → ℂ))
    (Finset.mem_univ (0 : AddChar G ℂ))
  rw [complete_reconstruction f] at hsum
  apply funext
  intro x
  simpa only [incompleteReconstruction,Pi.add_apply,Pi.smul_apply,smul_eq_mul,
    AddChar.zero_apply,mul_one] using congrFun hsum.symm x

/-- Actual incomplete reconstruction is exact precisely for zero mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FiniteCharacterGuardAttempt03/Variant48c71d040c059a4ed0fe8814abf1ce4c345394e565f706e72c7b9e484d606739.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdbdbe2984f1c89ca7fb1f820af52bead5e15808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
