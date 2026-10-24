# natCast_factorial_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:916e8cfe-b7e9-bd32-694a-fa41e2e547f0",
  "kind": "theorem",
  "lexical_name": "natCast_factorial_of_le",
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
  "slug": "natcast-factorial-of-le--b1d7b68ec9935a4839f7dd44",
  "source": {
    "blob": "a566781c46668b8c947104e5b7e371daebfd0974",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 35,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1d7b68ec9935a4839f7dd44d8413afca10b35a6be33675104680ee04d49658b",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:916e8cfe-b7e9-bd32-694a-fa41e2e547f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natCast_factorial_of_le {n : ℕ} (hn_fac : IsUnit (n ! : A))
    {m : ℕ} (hmn : m ≤ n) : IsUnit (m ! : A) := by
  obtain ⟨k, rfl⟩ := exists_add_of_le hmn
  clear hmn
  induction k generalizing m with
  | zero => simpa using hn_fac
  | succ k ih =>
    rw [← add_assoc, add_right_comm] at hn_fac
    have := ih hn_fac
    rw [Nat.factorial_succ, Nat.cast_mul, Nat.cast_commute _ _ |>.isUnit_mul_iff] at this
    exact this.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NatCast/Variant4b9ff41a4320f7798789731439197aeefef47ad7596f2be8bf45f9672660323c.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a566781c46668b8c947104e5b7e371daebfd0974` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
