# IsNatPowT.bit1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "384aae3c53c58ed96570c88c7151ce959041af15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:02b7c4b6-8863-1475-489d-34a3e017dc0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e70dfda6-864e-d785-897e-71e398c93d4f",
  "kind": "theorem",
  "lexical_name": "IsNatPowT.bit1",
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
  "slug": "isnatpowt-bit1--854869e34b923fd5cc70a3f7",
  "source": {
    "blob": "384aae3c53c58ed96570c88c7151ce959041af15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 54,
    "path": "GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:854869e34b923fd5cc70a3f791650adb81595ba48f5ef8dd04a92db5fd36b721",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e70dfda6-864e-d785-897e-71e398c93d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsNatPowT.bit1 :
    IsNatPowT (Nat.pow a b = c) a (nat_lit 2 * b + nat_lit 1) (Nat.mul c (Nat.mul c a)) :=
  ⟨fun h1 => by simp [two_mul, pow_add, mul_assoc, ← h1]⟩

/--
Proves `Nat.pow a b = c` where `a` and `b` are raw nat literals. This could be done by just
`rfl` but the kernel does not have a special case implementation for `Nat.pow` so this would
proceed by unary recursion on `b`, which is too slow and also leads to deep recursion.

We instead do the proof by binary recursion, but this can still lead to deep recursion,
so we use an additional trick to do binary subdivision on `log2 b`. As a result this produces
a proof of depth `log (log b)` which will essentially never overflow before the numbers involved
themselves exceed memory limits.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variant626483a8d68ac7bbfa41d49cd6b2b3d80c1af5ad56357a14c1f111c1df25151e.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `384aae3c53c58ed96570c88c7151ce959041af15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
