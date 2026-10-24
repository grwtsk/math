# factor_degrees_identify_cycles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "40011d4e6fea9c22db709b59ff9590a2c7b5eb07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0792b896-7d67-62af-4533-363739882bd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db8c8c48-4352-1edb-781b-8107d7237c04",
  "kind": "theorem",
  "lexical_name": "factor_degrees_identify_cycles",
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
  "slug": "factor-degrees-identify-cycles--e1270bcdb042b70af18204d2",
  "source": {
    "blob": "40011d4e6fea9c22db709b59ff9590a2c7b5eb07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 91,
    "path": "GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1270bcdb042b70af18204d2d82a81aef9f46394f08b6f78dfc85cce5fd3e5e8",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db8c8c48-4352-1edb-781b-8107d7237c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factor_degrees_identify_cycles {source : Observation.PolynomialSource} {p : ℕ}
    [Fact p.Prime] (f : GoodPrimeFactorization source p) {E : Type*} [Field E]
    [Algebra (ZMod p) E] {α : Type*} [Fintype α] [DecidableEq α]
    (w : FactorCycleWitness f E α) :
    factorDegrees f = fullCycleType w.frobenius := w.correspondence

/-- Even exact observed identity cycles cannot distinguish the trivial subgroup
from the full two-point permutation group. Group inference needs more evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/GaloisObservation/Variant13ee10d07c5dfa6d22caae303ceae0d8e32647690a217e34818538ca127ef37f.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40011d4e6fea9c22db709b59ff9590a2c7b5eb07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
