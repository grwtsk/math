# evalMul₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c78c3e2ff08db5bdcf54bce4fbb6f1428ed5b58fa5eec4c4dae589df4e3250c9",
  "kind": "def",
  "lexical_name": "evalMul₁",
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
  "slug": "evalmul--a4d886d70cf389a1c2d67e69",
  "source": {
    "blob": "961976da577530921d5f6220ce4ed143b8e30aee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 464,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4d886d70cf389a1c2d67e697a9b3a4cf9e2ec01ffeeb4f31264c6728536ad3f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c78c3e2ff08db5bdcf54bce4fbb6f1428ed5b58fa5eec4c4dae589df4e3250c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 464–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalMul₁ {a b : Q($α)} (va : ExProd sα a) (vb : ExSum sα b) :
    Lean.Core.CoreM <| Result (ExSum sα) q($a * $b) := do
  match vb with
  | .zero => return ⟨_, .zero, q(mul_zero $a)⟩
  | .add vb₁ vb₂ =>
    let ⟨_, vc₁, pc₁⟩ ← evalMulProd sα va vb₁
    let ⟨_, vc₂, pc₂⟩ ← evalMul₁ va vb₂
    let ⟨_, vd, pd⟩ ← evalAdd sα vc₁.toSum vc₂
    return ⟨_, vd, q(mul_add $pc₁ $pc₂ $pd)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean#L464).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `961976da577530921d5f6220ce4ed143b8e30aee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
