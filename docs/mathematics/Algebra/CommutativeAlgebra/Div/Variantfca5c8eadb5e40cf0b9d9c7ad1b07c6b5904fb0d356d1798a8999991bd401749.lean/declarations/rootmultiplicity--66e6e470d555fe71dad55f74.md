# rootMultiplicity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:602159dd7fccb3e40eaebe2cf62af0d0bbf4c631521dbcfee8a56f40fd873a9e",
  "kind": "def",
  "lexical_name": "rootMultiplicity",
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
  "slug": "rootmultiplicity--66e6e470d555fe71dad55f74",
  "source": {
    "blob": "820aa1582432e233870bb60b99916ed5e9c72a18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 546,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66e6e470d555fe71dad55f7413738119377a53c81175b0b350fc309b911083cc",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:602159dd7fccb3e40eaebe2cf62af0d0bbf4c631521dbcfee8a56f40fd873a9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rootMultiplicity (a : R) (p : R[X]) : ℕ :=
  if h0 : p = 0 then 0
  else
    let _ : DecidablePred fun n : ℕ => ¬(X - C a) ^ (n + 1) ∣ p := fun n =>
      @Not.decidable _ (decidableDvdMonic p ((monic_X_sub_C a).pow (n + 1)))
    Nat.find (multiplicity_X_sub_C_finite a h0)
#align polynomial.root_multiplicity Polynomial.rootMultiplicity

/- Porting note: added the following due to diamond with decidableProp and
decidableDvdMonic see also [Zulip]
(https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/
non-defeq.20aliased.20instance) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Div/Variantfca5c8eadb5e40cf0b9d9c7ad1b07c6b5904fb0d356d1798a8999991bd401749.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `820aa1582432e233870bb60b99916ed5e9c72a18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
