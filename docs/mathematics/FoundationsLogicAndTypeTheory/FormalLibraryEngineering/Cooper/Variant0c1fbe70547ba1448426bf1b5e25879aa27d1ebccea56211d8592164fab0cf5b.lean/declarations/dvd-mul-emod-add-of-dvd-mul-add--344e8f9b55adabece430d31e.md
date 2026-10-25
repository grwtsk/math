# dvd_mul_emod_add_of_dvd_mul_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ad128f2-3128-16f7-ac9e-b333862bc007",
  "kind": "theorem",
  "lexical_name": "dvd_mul_emod_add_of_dvd_mul_add",
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
  "slug": "dvd-mul-emod-add-of-dvd-mul-add--344e8f9b55adabece430d31e",
  "source": {
    "blob": "c4e7389993380fb217d9d5c2936b86c8ea6f7d77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:344e8f9b55adabece430d31e62b8b7a5c430812beb3702b40c94bf7d448f9479",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ad128f2-3128-16f7-ac9e-b333862bc007`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_mul_emod_add_of_dvd_mul_add {a b c d x : Int}
    (w : a ∣ b * x + c) (h : (a / gcd a b) ∣ d) :
    a ∣ b * (x % d) + c := by
  obtain ⟨p, w⟩ := w
  obtain ⟨q, rfl⟩ := h
  rw [Int.emod_def, Int.mul_sub, Int.sub_eq_add_neg, Int.add_right_comm, w,
    Int.dvd_add_right (Int.dvd_mul_right _ _), ← Int.mul_assoc, ← Int.mul_assoc, Int.dvd_neg,
    ← Int.mul_ediv_assoc b (gcd_dvd_left ..), Int.mul_comm b a,
    Int.mul_ediv_assoc a (gcd_dvd_right ..), Int.mul_assoc, Int.mul_assoc]
  apply Int.dvd_mul_right

/--
Given a solution `x` to a divisibility constraint `a ∣ x + c`,
then `x % d` is another solution as long as `a | d`.

See `dvd_mul_emod_add_of_dvd_mul_add` for a more general version allowing a coefficient with `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cooper/Variant0c1fbe70547ba1448426bf1b5e25879aa27d1ebccea56211d8592164fab0cf5b.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4e7389993380fb217d9d5c2936b86c8ea6f7d77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
