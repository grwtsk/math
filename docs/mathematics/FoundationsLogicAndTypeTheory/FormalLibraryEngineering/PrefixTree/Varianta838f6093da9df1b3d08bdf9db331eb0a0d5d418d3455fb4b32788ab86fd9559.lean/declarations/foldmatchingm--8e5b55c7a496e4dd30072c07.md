# foldMatchingM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca5c3ae8e14ad2e9dc47fb5a9cf404812bee85b39e44847055b9ef1b59c5beb8",
  "kind": "def",
  "lexical_name": "foldMatchingM",
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
  "slug": "foldmatchingm--8e5b55c7a496e4dd30072c07",
  "source": {
    "blob": "6c9deec1088c2f08a0e456c471d6e289e1a65b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e5b55c7a496e4dd30072c0700f340760b2e84826fae8b4f5059553470289d63",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca5c3ae8e14ad2e9dc47fb5a9cf404812bee85b39e44847055b9ef1b59c5beb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def foldMatchingM [Monad m] (cmp : α → α → Ordering) (t : PrefixTreeNode α β cmp) (k : List α) (init : σ) (f : β → σ → m σ) : m σ :=
  let rec @[specialize] fold : PrefixTreeNode α β cmp → σ → m σ
    | PrefixTreeNode.Node b? n, d => do
      let d ← match b? with
        | none   => pure d
        | some b => f b d
      n.foldlM (init := d) fun d _ t => fold t d
  let rec @[specialize] find : List α → PrefixTreeNode α β cmp → σ → m σ
    | [],    t, d => fold t d
    | k::ks, PrefixTreeNode.Node _ m, d =>
      match m.get? k with
      | none   => pure init
      | some t => find ks t d
  find k t init

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Varianta838f6093da9df1b3d08bdf9db331eb0a0d5d418d3455fb4b32788ab86fd9559.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c9deec1088c2f08a0e456c471d6e289e1a65b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
