# CommRing.ofMinimalAxioms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f3f07d21ad7c16b22aabd1b58df9b9ab2091750bcfe765db2272f77801dee6f",
  "kind": "abbrev",
  "lexical_name": "CommRing.ofMinimalAxioms",
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
  "slug": "commring-ofminimalaxioms--ee125d5ef3450a61757d8c87",
  "source": {
    "blob": "2cc5e4fd06c02d52dcbc34fac50804604c444972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 83,
    "path": "GRWTSK/Algebra/MinimalAxioms/Variant5414a940f01dff180580b624f169db76683c4627873a4f9dc519bc5a498d942c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee125d5ef3450a61757d8c87701bf47a8798676f075b560a2f03518fc49a3185",
  "verification": {
    "reference": "docs/verification/Algebra/MinimalAxioms/Variant5414a940f01dff180580b624f169db76683c4627873a4f9dc519bc5a498d942c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f3f07d21ad7c16b22aabd1b58df9b9ab2091750bcfe765db2272f77801dee6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev CommRing.ofMinimalAxioms {R : Type u}
    [Add R] [Mul R] [Neg R] [Zero R] [One R]
    (add_assoc : ∀ a b c : R, a + b + c = a + (b + c))
    (zero_add : ∀ a : R, 0 + a = a)
    (neg_add_cancel : ∀ a : R, -a + a = 0)
    (mul_assoc : ∀ a b c : R, a * b * c = a * (b * c))
    (mul_comm : ∀ a b : R, a * b = b * a)
    (one_mul : ∀ a : R, 1 * a = a)
    (left_distrib : ∀ a b c : R, a * (b + c) = a * b + a * c) : CommRing R :=
  haveI mul_one : ∀ a : R, a * 1 = a := fun a => by
    rw [mul_comm, one_mul]
  haveI right_distrib : ∀ a b c : R, (a + b) * c = a * c + b * c := fun a b c => by
    rw [mul_comm, left_distrib, mul_comm, mul_comm b c]
  letI := Ring.ofMinimalAxioms add_assoc zero_add neg_add_cancel mul_assoc
    one_mul mul_one left_distrib right_distrib
  { mul_comm := mul_comm }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MinimalAxioms/Variant5414a940f01dff180580b624f169db76683c4627873a4f9dc519bc5a498d942c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MinimalAxioms/Variant5414a940f01dff180580b624f169db76683c4627873a4f9dc519bc5a498d942c.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc5e4fd06c02d52dcbc34fac50804604c444972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
