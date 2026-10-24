# parity_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eadcd66f-e474-6959-8c7e-f6e66bb8bb6c",
  "kind": "theorem",
  "lexical_name": "parity_unique",
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
  "slug": "parity-unique--af90b61e7dc94b3701e80a03",
  "source": {
    "blob": "3bd7223bf64f7586c8336478152c8605646f2c64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variant9b5ecec258f0cf074eb6d9f69aa26926b14744aa77d6bc0e71a0f8cce8664eec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af90b61e7dc94b3701e80a03c6eec4e70ddc892a292dd603fae5d9828fbd540b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Profiles/Variant9b5ecec258f0cf074eb6d9f69aa26926b14744aa77d6bc0e71a0f8cce8664eec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eadcd66f-e474-6959-8c7e-f6e66bb8bb6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parity_unique {v w : V} {p q : Bool}
    (h : SignedPath E v w p) (k : SignedPath E v w q)
    (hr : Reach E w v) (hodd : ¬ SignedPath E v v true) : p = q := by
  obtain ⟨r, hr⟩ := hr
  have hpr := h.append hr
  have hqr := k.append hr
  cases p <;> cases q <;> cases r <;> simp_all

end SignedPath

namespace Reach

variable {V : Type*} {E : V → V → Bool → Prop} {v w z : V}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Profiles/Variant9b5ecec258f0cf074eb6d9f69aa26926b14744aa77d6bc0e71a0f8cce8664eec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Profiles/Variant9b5ecec258f0cf074eb6d9f69aa26926b14744aa77d6bc0e71a0f8cce8664eec.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd7223bf64f7586c8336478152c8605646f2c64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
