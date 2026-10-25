# evalAdd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d14164daa85f3a0cfd5d3510c1de94919a0d0700e209c985792ad631e91bdab7",
  "kind": "def",
  "lexical_name": "evalAdd",
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
  "slug": "evaladd--fa1f98efd4a7c730fd175c0e",
  "source": {
    "blob": "bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa1f98efd4a7c730fd175c0ec66157d0f92c1919e2228235ffed2f5f1768ab9d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d14164daa85f3a0cfd5d3510c1de94919a0d0700e209c985792ad631e91bdab7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def evalAdd (va : ExSum sα a) (vb : ExSum sα b) : Result (ExSum sα) q($a + $b) :=
  match va, vb with
  | .zero, vb => ⟨b, vb, q(add_pf_zero_add $b)⟩
  | va, .zero => ⟨a, va, q(add_pf_add_zero $a)⟩
  | .add (a := a₁) (b := _a₂) va₁ va₂, .add (a := b₁) (b := _b₂) vb₁ vb₂ =>
    match evalAddOverlap sα va₁ vb₁ with
    | some (.nonzero ⟨_, vc₁, pc₁⟩) =>
      let ⟨_, vc₂, pc₂⟩ := evalAdd va₂ vb₂
      ⟨_, .add vc₁ vc₂, q(add_pf_add_overlap $pc₁ $pc₂)⟩
    | some (.zero pc₁) =>
      let ⟨c₂, vc₂, pc₂⟩ := evalAdd va₂ vb₂
      ⟨c₂, vc₂, q(add_pf_add_overlap_zero $pc₁ $pc₂)⟩
    | none =>
      if let .lt := va₁.cmp vb₁ then
        let ⟨_c, vc, (pc : Q($_a₂ + ($b₁ + $_b₂) = $_c))⟩ := evalAdd va₂ vb
        ⟨_, .add va₁ vc, q(add_pf_add_lt $a₁ $pc)⟩
      else
        let ⟨_c, vc, (pc : Q($a₁ + $_a₂ + $_b₂ = $_c))⟩ := evalAdd va vb₂
        ⟨_, .add vb₁ vc, q(add_pf_add_gt $b₁ $pc)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
