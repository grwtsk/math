# ind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:377bf886317e926ee5755870eb51796b2a71b9a73ac24e0b333a93a78f739c87",
  "kind": "def",
  "lexical_name": "ind",
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
  "slug": "ind--bc87caefaa814a2feb0a2c04",
  "source": {
    "blob": "118a2032daaa24e8f58313e7c55c350ebe740206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 77,
    "path": "GRWTSK/Algebra/LinearAlgebra/Induced/Variantf462f392700d339611a2fb1480192d0a870efa20c06d248a96122b90fc6a79b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc87caefaa814a2feb0a2c040b2bcdf89ff440558713a8d4c8aad6cd63587bb6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Induced/Variantf462f392700d339611a2fb1480192d0a870efa20c06d248a96122b90fc6a79b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:377bf886317e926ee5755870eb51796b2a71b9a73ac24e0b333a93a78f739c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ind : Representation k H (IndV φ ρ) where
  toFun h :=
    Coinvariants.map _ _ ⟨(MonoidAlgebra.mapDomainLinearMap k k fun x => x * h⁻¹).rTensor _,
    fun _ => by ext; simp [mul_assoc]⟩
  map_one' := by ext; simp
  map_mul' _ _ := by ext; simp [IndV, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Induced/Variantf462f392700d339611a2fb1480192d0a870efa20c06d248a96122b90fc6a79b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Induced/Variantf462f392700d339611a2fb1480192d0a870efa20c06d248a96122b90fc6a79b2.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `118a2032daaa24e8f58313e7c55c350ebe740206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
