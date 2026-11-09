# Paper-to-Lean formalizations

Follow [root instructions](../../AGENTS.md) and [documentation instructions](../AGENTS.md).
Local attribution: grwtsk contributors.

- Track original paper-to-Lean source correspondence here. Adapting an existing upstream Lean proof belongs in adaptations; it does not by itself establish a paper formalization.
- Develop locally first. Keep maintained Lean source under its actual canonical `GRWTSK/` subject path. This directory’s `GRWTSK/` view uses relative source links matching those paths. Keep incompatible build environments isolated under `environments/` when needed; never promote their dependencies into the root build automatically.
- Each admitted theorem has an individual Markdown provenance record beside its canonical source. Cite the paper’s actual authors, title, exact edition/version, stable URL and available digest, exact theorem/lemma/page or method, local file and fully qualified declaration, and pinned Lean source revision.
- State exact hypotheses and conclusion, representation changes, mathematical consumer, analytical correspondence, unresolved bridges, and actual verification outcomes. Distinguish a paper theorem, a local consequence and a conditional interface. Do not infer correspondence from a shared title or bibliography entry. Preserve source identity, licensing and upstream authorship.
- Use the same per-theorem provenance discipline as adaptations, but require explicit paper-to-statement correspondence. Mark absent checks `NOT_RUN`. Publication or a source link does not establish analytical acceptance, successful compilation, kernel replay, axiom review or independent verification.
- [The catalog](catalogue.json) follows actual repository paths and declarations. Paper editions and local declarations have many-to-many correspondence; neither provider nor publication owns the directory hierarchy. Preserve each mapping’s individual scope.
- Only add source links for records with an identified paper edition and exact locator. An empty catalog is an empty population, not a completed review. Do not backfill unsupported paper mappings or recreate repository-wide explanatory documentation.
